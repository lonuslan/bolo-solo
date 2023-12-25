/*
 * Bolo - A stable and beautiful blogging system based in Solo.
 * Copyright (c) 2020, https://github.com/adlered
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */
package org.b3log.solo.bolo.bbtalk.service;

import org.b3log.latke.Keys;
import org.b3log.latke.ioc.Inject;
import org.b3log.latke.logging.Level;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.model.Pagination;
import org.b3log.latke.repository.*;
import org.b3log.latke.service.ServiceException;
import org.b3log.latke.service.annotation.Service;
import org.b3log.latke.util.CollectionUtils;
import org.b3log.latke.util.Paginator;
import org.b3log.solo.bolo.bbtalk.model.BbTalk;
import org.b3log.solo.bolo.bbtalk.repository.BbTalkRepository;
import org.b3log.solo.model.*;
import org.b3log.solo.service.ArticleQueryService;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

@Service
public class BbTalkQueryService {

    private static final Logger LOGGER = Logger.getLogger(BbTalkQueryService.class);

    @Inject
    private BbTalkRepository bbTalkRepository;

    public JSONObject getBbTalk(final String bbTalkOld) throws ServiceException{
        try {
            final JSONObject ret = new JSONObject();
            final JSONObject bbTalk = bbTalkRepository.get(bbTalkOld);
            if (null == bbTalk) {
                return null;
            }
            ret.put(BbTalk.BBTALK, bbTalk);
            LOGGER.log(Level.DEBUG, "Got an bbTalk [id={0}]", bbTalkOld);
            return ret;
        } catch (final Exception e) {
            LOGGER.log(Level.ERROR, "Gets an bbTalk failed", e);
            throw new ServiceException(e);
        }
    }

    public JSONObject getBbTalks(final JSONObject requestJSONObject) throws ServiceException{
        final JSONObject ret = new JSONObject();

        final int currentPageNum = requestJSONObject.optInt(Pagination.PAGINATION_CURRENT_PAGE_NUM);
        final int pageSize = requestJSONObject.optInt(Pagination.PAGINATION_PAGE_SIZE);
        final int windowSize = requestJSONObject.optInt(Pagination.PAGINATION_WINDOW_SIZE);
        final Query query = new Query().setPage(currentPageNum, pageSize).
                addSort(Keys.OBJECT_ID, SortDirection.DESCENDING);

        if (requestJSONObject.has(BbTalk.BBTALK_CONTENT)) {
            query.setFilter(new PropertyFilter(BbTalk.BBTALK_CONTENT, FilterOperator.EQUAL,
                    requestJSONObject.optString(BbTalk.BBTALK_CONTENT)));
        }

        JSONObject result;
        try {
            result = bbTalkRepository.get(query);
        } catch (final RepositoryException e) {
            LOGGER.log(Level.ERROR, "Gets bbtalks failed", e);
            throw new ServiceException(e);
        }

        final int pageCount = result.optJSONObject(Pagination.PAGINATION).optInt(Pagination.PAGINATION_PAGE_COUNT);

        final JSONObject pagination = new JSONObject();
        ret.put(Pagination.PAGINATION, pagination);
        final List<Integer> pageNums = Paginator.paginate(currentPageNum, pageSize, pageCount, windowSize);
        pagination.put(Pagination.PAGINATION_PAGE_COUNT, pageCount);
        pagination.put(Pagination.PAGINATION_PAGE_NUMS, pageNums);

        final JSONArray data = result.optJSONArray(Keys.RESULTS);
        final List<JSONObject> bbtalks = CollectionUtils.jsonArrayToList(data);

        ret.put(BbTalk.BBTALKS, bbtalks);

        return ret;

    }
}
