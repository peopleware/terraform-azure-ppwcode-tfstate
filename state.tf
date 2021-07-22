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

resource "azurerm_storage_container" "terraform_state" {
  name                  = var.prefix == "" ? format("tfstate-%s", var.organisation_name) : format("%s-tfstate-%s", var.prefix, var.organisation_name)
  storage_account_name  = var.storage_account_name
  container_access_type = "private"
}
