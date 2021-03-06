/*
* Copyright 2007-2012 the original author or authors.
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
package org.as3commons.aop.advisor.impl {
	import org.as3commons.aop.advice.IAdvice;
	import org.as3commons.aop.pointcut.impl.AlwaysMatchingPointcut;

	/**
	 * Pointcut advisor for which the pointcut always matches. This is
	 * used internally to wrap advice that is added to a proxy factory
	 * without specifying a pointcut.
	 *
	 * @author Christophe Herreman
	 */
	public class AlwaysMatchingPointcutAdvisor extends PointcutAdvisor {

		// --------------------------------------------------------------------
		//
		// Constructor
		//
		// --------------------------------------------------------------------

		public function AlwaysMatchingPointcutAdvisor(advice:IAdvice) {
			super(new AlwaysMatchingPointcut(), advice);
		}
	}
}
