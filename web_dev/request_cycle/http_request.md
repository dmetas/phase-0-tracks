# What are some common http status codes?
1. 1XX Informational 
	1. 100 continue
		* Client should contiue with its request. the server has recieved the request headers and that the client should proceed to send the request body.
	2. 101 switching protocols
		* The requester has asked the server to switch protocols and the server is acknowledging. 
	3. 102 processing(webdav) 
		* Inform the client that the server has accepted the complete rquest but has not yet completed it. This status code should only be sent when the server has a reasonable expectation that the request will take significant time to complete(longer than 20 seconds)
2. 2XX Success
	1. 200 OK
		* Standard response for successful HTTP requests. The actual response will depend on the request method used.
	2. 201 Created
		* The reqyest has been fulfilled and resulted in a new resource being created. 
	3. 204 No Content 
		* The server successfully processed the request, but is not returning any content. 
3. 3XX Redirection
	1. 300 Multiple Choices
		* Indicates multiple options for the resouce that the client may follow. For example could be used to present different format options for video
	2. 304 Not Modified
		* Indicates that the resource has not been modified since the last request. Used for conditional GET calls to reduce band-width usage.
	3. 307 Temporary Redirect
		* In this case, the request should be repeated with another URL; howeer future requests can still use the origional URL.
4. 4XX Client Error
	1. 404 Not Found
		* Used when the resquested resource is not found, whether it doesnt exist or if there was a 401 or 403 that for security reasons the service wants to mask. 

# What is the difference between POST and GET request in HTTP
 GET requests data from a specified resource POST submits data to be processed to a specified resource

1. GET
	* returns the same result every time (idempotent)
	* can only send limited data with get
	* not secure because data is explosed in the URL
	* is the default method
2. POST
	* does not return the same result (non-idempotent)
	* can send a large amount of data because its part of the request body
	* is secure becase data is sent in request body and we cant bookmark it (still vulnerable because http request can be intercepted)
	* must be specified as post to send request

# What is a cookie
HTTP cookie is a small piece of data sent from a website and stred on a user's computer by the web borwser. Cookies are desgined to be a reliable mechanism for websites to remember stateful information such as items in a shopping car in an online store. There are also authentication cookies which are used to determine if the user is logged in or no and which account they are logged in with.
