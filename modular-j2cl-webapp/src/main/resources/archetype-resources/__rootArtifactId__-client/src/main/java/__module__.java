package ${package};

/*
 * Copyright 2021 Thomas Broyer, Frank Hossfeld, Colin Alworth, Ahmad Bawaneh
 * Copyright (C) 2017 Vertispan
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import org.gwtproject.core.client.EntryPoint;

import elemental2.dom.DomGlobal;
import elemental2.dom.HTMLDivElement;
import elemental2.dom.HTMLHeadingElement;
import jsinterop.base.Js;

public class ${module} implements EntryPoint {

    public void onModuleLoad() {
        HTMLDivElement div= Js.cast(DomGlobal.document.createElement("div"));
        HTMLHeadingElement h1= Js.cast(DomGlobal.document.createElement("h1"));
        h1.textContent ="Hello from j2cl";
        div.appendChild(h1);
        DomGlobal.document.body.appendChild(div);
    }
}
