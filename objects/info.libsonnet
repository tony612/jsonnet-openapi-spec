// Copyright (c) 2020, Cody Opel <cwopel@chlorm.net>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

{
  // https://swagger.io/specification/#infoObject
  new():: {

    title: error "info title required",
    version: error "info version required",

    Title(s):: self {
      assert std.isString(s),
      title: s,
    },

    Description(s):: self {
      assert std.isString(s),
      description: s,
    },

    TermsOfService(s):: self {
      assert std.isString(s),
      termsOfService: s,
    },

    Contact(contactObject):: self {
      assert std.isObject(contactObject),
      contact: contactObject,
    },

    License(licenseObject):: self {
      assert std.isObject(licenseObject),
      license: licenseObject,
    },

    Version(s):: self {
      assert std.isString(s),
      version: s,
    },
  },
}
