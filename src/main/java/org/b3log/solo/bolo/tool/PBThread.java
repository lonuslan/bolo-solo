package org.b3log.solo.bolo.tool;

import org.b3log.latke.Keys;
import org.b3log.latke.ioc.BeanManager;
import org.b3log.latke.ioc.Inject;
import org.b3log.latke.logging.Level;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.repository.Query;
import org.b3log.latke.repository.RepositoryException;
import org.b3log.latke.util.CollectionUtils;
import org.b3log.solo.repository.ArticleRepository;
import org.json.JSONObject;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PBThread implements Runnable {

    /**
     * Logger.
     */
    private static final Logger LOGGER = Logger.getLogger(PBThread.class);

    final private String STATUS_SPARE = "<span style='color: green; font-weight: bold'>空闲</span>";
    final private String STATUS_RUNNING = "<span style='color: red; font-weight: bold'>运行中</span>";
    final private String STATUS_ERROR = "<span style='color: yellow; font-weight: bold'>有错误，但仍在运行中，请在日志中查看详情并联系维护者</span>";

    private String status = STATUS_SPARE;
    private boolean lock = false;

    public PBThread() {
    }

    public String getStatus() {
        return status;
    }

    @Override
    public void run() {
        if (!lock) {
            // 锁定线程
            lock = true;
            status = STATUS_RUNNING;

            // 开始处理图片
            LOGGER.log(Level.INFO, "Converting images...");

            try {
                final BeanManager beanManager = BeanManager.getInstance();
                final ArticleRepository articleRepository = beanManager.getReference(ArticleRepository.class);
                final Query query = new Query();
                final List<JSONObject> articlesResult = articleRepository.getList(query);

                // 两个前缀
                String suffix_1 = "(\\]\\(https://img.hacpai.com).*?\\)";
                String prefix_1 = ")";
                String suffix_2 = "(\\]\\(https://b3logfile.com).*?\\)";
                String prefix_2 = ")";
                // 解剖每个文章并重新上传组合
                for (JSONObject article : articlesResult) {
                    String oId = article.optString("oId");
                    String articleTitle = article.optString("articleTitle");
                    String articleContent = article.optString("articleContent");

                    LOGGER.log(Level.INFO, "Processing article [oId=" + oId + ", articleTitle=" + articleTitle + "]");

                    Pattern pattern_1 = Pattern.compile(suffix_1);
                    Pattern pattern_2 = Pattern.compile(suffix_2);
                    Matcher matcher_1 = pattern_1.matcher(articleContent);
                    Matcher matcher_2 = pattern_2.matcher(articleContent);

                    ArrayList<String> urlList = new ArrayList<>();
                    while (matcher_1.find()) {
                        urlList.add(matcher_1.group().replaceAll("\\]\\(", "").replaceAll("\\)", ""));
                    }
                    while (matcher_2.find()) {
                        urlList.add(matcher_2.group().replaceAll("\\]\\(", "").replaceAll("\\)", ""));
                    }

                    // 逐个处理图片
                    ArrayList<String> newUrlList = new ArrayList<>();
                    for (int i = 0; i < urlList.size(); i++) {
                        String oldUrl = urlList.get(i);
                        String newUrl = "None";
                        // 处理
                        final URL url = new URL(oldUrl);
                        final HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                        if (oldUrl.indexOf("hacpai.com") != -1) {
                            conn.setRequestProperty(":authority:", "img.hacpai.com");
                            conn.setRequestProperty(":path:", oldUrl.replaceAll("https://img.hacpai.com", ""));
                        } else {
                            conn.setRequestProperty(":authority:", "b3logfile.com");
                            conn.setRequestProperty(":path:", oldUrl.replaceAll("https://b3logfile.com", ""));
                        }
                        conn.setRequestProperty(":method:", "GET");
                        conn.setRequestProperty(":scheme:", "HTTPS");
                        conn.setRequestProperty("accept", "image/avif,image/webp,image/apng,image/*,*/*;q=0.8");
                        conn.setRequestProperty("accept-encoding", "gzip, deflate, br");
                        conn.setRequestProperty("accept-language", "zh-CN,zh;q=0.9,en;q=0.8");
                        conn.setRequestProperty("cache-control", "no-cache");
                        conn.setRequestProperty("pragma", "no-cache");
                        conn.setRequestProperty("referer", "http://localhost:8080/");
                        conn.setRequestProperty("sec-fetch-dest", "image");
                        conn.setRequestProperty("sec-fetch-mode", "no-cors");
                        conn.setRequestProperty("sec-fetch-site", "cross-site");
                        conn.setRequestProperty("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36");
                        conn.setConnectTimeout(100);
                        conn.setReadTimeout(3000);
                        conn.setDoOutput(true);
                        conn.getInputStream();


                        // 保存
                        newUrlList.add(newUrl);
                        LOGGER.log(Level.INFO, oldUrl + " >>> " + newUrl);
                    }

                }

            } catch (Exception e) {
                LOGGER.log(Level.ERROR, "Cannot get articles.");
                lock = false;
                status = STATUS_ERROR;
                try {
                    Thread.sleep(1000 * 60);
                } catch (InterruptedException ignored) {
                }
            }

            // 关闭线程
            lock = false;
            status = STATUS_SPARE;
            LOGGER.log(Level.INFO, "Image convert completed.");
        }
    }
}
