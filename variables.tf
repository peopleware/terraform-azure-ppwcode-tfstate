/**
 *    Copyright 2021 PeopleWare n.v.
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

variable "storage_account_name" {
  type = string

  description = <<DESCRIPTION
Name of the Azure Storage Account that will be used to contain the blob Container.
DESCRIPTION
}

variable "organisation_name" {
  type = string

  description = <<DESCRIPTION
Identification of the organisation whose infrastructure this will be the root of.
Used as suffix the blob Container name.
This should be the domain name of the organisation, with . replaced with _.
DESCRIPTION
}

variable "prefix" {
  type = string

  description = <<DESCRIPTION
Optional prefix of this structure, e.g., "v2". This makes it possible to create a new structure
on a live situation. The names then becomes "<PREFIX>-tfstate-…". Configurations can be switched one by one.
When switching, terraform proposes to copy the existing configuration file. You should answer "yes".
DESCRIPTION

  default = ""
}
