import { ChatError } from "@easemob/chatsdk";
import { SafetyValue } from "../SafetyMapTool";


export default class ChatErrorHelper {
  static toJson(err: ChatError): Map<string, Object> {
    let ret = new Map<string, Object>();
    SafetyValue(err.errorCode, (value)=>ret.set("code", value));
    SafetyValue(err.description, (value)=>ret.set("description", value));
    return ret;
  }

  static infoToJson(code: number, desc: string): Map<string, object> {
    let ret = new Map<string, Object>();
    ret.set("code", code);
    ret.set("description", desc);
    return ret;
  }
}