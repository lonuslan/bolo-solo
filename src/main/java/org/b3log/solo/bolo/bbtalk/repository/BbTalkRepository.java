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
package org.b3log.solo.bolo.bbtalk.repository;


import org.b3log.latke.logging.Logger;
import org.b3log.latke.repository.AbstractRepository;
import org.b3log.latke.repository.RepositoryException;
import org.b3log.latke.repository.annotation.Repository;
import org.b3log.solo.bolo.bbtalk.model.BbTalk;
import org.b3log.solo.repository.ArticleRepository;
import org.json.JSONObject;

@Repository
public class BbTalkRepository extends AbstractRepository {
    private static final Logger LOGGER = Logger.getLogger(BbTalkRepository.class);

    public BbTalkRepository() {
        super(BbTalk.BBTALK);
    }

    @Override
    public void remove(String id) throws RepositoryException {

        super.remove(id);
    }

    @Override
    public JSONObject get(String id) throws RepositoryException {
        return super.get(id);
    }

    @Override
    public void update(String id, JSONObject jsonObject, String... propertyNames) throws RepositoryException {
        super.update(id, jsonObject, propertyNames);
    }
}
