/**
 * @author Domenico Sciarrone
 * @date October 2017
 * 
 * @description ApexServiceImpl class implements Interface IworkOrderLineItemService to manage apex operation for Wo and Woli
 * @file ApexServiceImpl.cls
 * @copyright Arlanis Reply AG
 */
public with sharing class ApexServiceImpl implements IworkOrderLineItemService{
	public String jsonString{set;get;}
	public String serviceName{set;get;}
	public ApexServiceImpl() {
		this.serviceName='apex';
	}
	/**
	 * [add method add json to class variable]
	 * @param var [json string]
	 */
	public void add(String var){
		this.jsonString = var;
		
	}

	/**
	 * [doOperation process logic]
	 */
	public void doOperation(){
		system.debug('ApexServiceImpl doOperation START');
		ApexJson obj = jsonString!=null? (ApexJson)JSON.deserializeStrict(jsonString,ApexJson.class) : null;
		//create a map for method key -> value
		Type t = Type.forName(obj.apexClass);
		

	}

	public void finallyOperation(){
		//call ACN class interface

	}
     

    public class ApexJson {

		public String apexClass {get;set;}
		public String apexMethod{set;get;} 
		public List<Params> params {get;set;} 

	}
	public class Params {
		public String fieldName {get;set;} 
		public String value {get;set;}
			}
}