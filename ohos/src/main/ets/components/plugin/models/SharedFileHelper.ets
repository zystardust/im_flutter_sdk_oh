import { Group, SharedFile } from "@easemob/chatsdk";
import { SafetyValue } from "../SafetyMapTool";

export default class SharedFileHelper {
  static toJson(file: SharedFile): Map<string, Object> {
    let data = new Map<string, Object>();
    SafetyValue(file.fileId(), (value)=>data.set("fileId", value));
    SafetyValue(file.fileName(), (value)=>data.set("name", value));
    SafetyValue(file.fileOwner(), (value)=>data.set("owner", value));
    SafetyValue(file.fileUpdateTime(), (value)=>data.set("createTime", value));
    SafetyValue(file.fileSize(), (value)=>data.set("fileSize", value));
    return data;
  }

  static listToJson(files: SharedFile[]): Map<string, Object>[] {
    let list = new Array<Map<string, Object>>();
    for (let index = 0; index < files.length; index++) {
      const file = files[index];
      list.push(SharedFileHelper.toJson(file));
    }
    return list;
  }
}

