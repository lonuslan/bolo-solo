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

import com.sun.org.apache.xml.internal.security.utils.resolver.ResourceResolverException;
import org.b3log.latke.ioc.Inject;
import org.b3log.latke.logging.Level;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.repository.RepositoryException;
import org.b3log.latke.repository.annotation.Repository;
import org.b3log.latke.repository.annotation.Transactional;
import org.b3log.latke.service.ServiceException;
import org.b3log.latke.service.annotation.Service;
import org.b3log.solo.bolo.bbtalk.model.BbTalk;
import org.b3log.solo.bolo.bbtalk.repository.BbTalkRepository;
import org.b3log.solo.model.Category;
import org.b3log.solo.service.CategoryMgmtService;
import org.json.JSONObject;

@Service
public class BbTalkMgmtService {

    private static final Logger LOGGER = Logger.getLogger(BbTalkMgmtService.class);

    @Inject
    private BbTalkRepository bbTalkRepository;

    @Transactional
    public String addBbTalk(final JSONObject bbTalk) throws ServiceException{
        try {
            final JSONObject record = new JSONObject();
            record.put(BbTalk.BBTALK_CONTENT, bbTalk.optString(BbTalk.BBTALK_CONTENT));
            final String ret = bbTalkRepository.add(record);
            return ret;
        } catch (final RepositoryException e) {
            LOGGER.log(Level.ERROR, "Adds a bbTalk failed", e);
            throw new ServiceException(e);
        }
    }

    @Transactional
    public void removeBbTalk(final String bbTailOld) throws ServiceException{
        try {
            bbTalkRepository.remove(bbTailOld);
        } catch (final RepositoryException e){
            LOGGER.log(Level.ERROR, "Remove a bbTalk [id=" + bbTailOld + "] failed", e);
            throw new ServiceException(e);
        }
    }

    @Transactional
    public void updateBbTalk(final String bbTailOld, final JSONObject bbTalk) throws ServiceException {
        try {
            final JSONObject oldBbTalk = bbTalkRepository.get(bbTailOld);
            bbTalkRepository.update(bbTailOld, bbTalk);
        } catch (final RepositoryException e) {
            LOGGER.log(Level.ERROR, "Updates a bbTalk [id=" + bbTailOld + "] failed", e);
            throw new ServiceException(e);
        }
    }

}
