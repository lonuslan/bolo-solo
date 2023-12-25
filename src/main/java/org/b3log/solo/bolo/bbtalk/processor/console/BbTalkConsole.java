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
package org.b3log.solo.bolo.bbtalk.processor.console;


import org.b3log.latke.ioc.Inject;
import org.b3log.latke.logging.Logger;
import org.b3log.latke.service.LangPropsService;
import org.b3log.latke.servlet.annotation.Before;
import org.b3log.latke.servlet.annotation.RequestProcessor;
import org.b3log.solo.bolo.bbtalk.service.BbTalkMgmtService;
import org.b3log.solo.bolo.bbtalk.service.BbTalkQueryService;
import org.b3log.solo.processor.console.CategoryConsole;
import org.b3log.solo.processor.console.ConsoleAdminAuthAdvice;

@RequestProcessor
@Before(ConsoleAdminAuthAdvice.class)
public class BbTalkConsole {

    private static final Logger LOGGER = Logger.getLogger(BbTalkConsole.class);

    @Inject
    private BbTalkQueryService bbTalkQueryService;

    @Inject
    private BbTalkMgmtService bbTalkMgmtService;

    @Inject
    private LangPropsService langPropsService;



}
