/**
* Copyright 2009 Maxim Cassian Porges
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* 
*     http://www.apache.org/licenses/LICENSE-2.0
* 
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
package assets.abc
{
	public class BaseClass
	{
		public function BaseClass()
		{
		}

        public function operationOne() : void
        {
        	trace("^^^ operationOne ^^^");
        }

        public function operationTwo(argument1 : String, argument2 : int, argument3 : Object) : void
        {
            trace("^^^ operationTwo(" + argument1 + ", " + argument2 + ", " + argument3 + ") ^^^");
        }
	}
}