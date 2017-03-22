1. common http status codes:
  
  1XX informational responses
  100 continue

  2xx success

  3xx redirection
    301 Moved Permanently
      This and all future requests should be directed to the given URI.[20]


  4xx client errors
  403 - forbidden
    The request was valid, but the server is refusing action. The user might not have the necessary permissions for a resource.

  404 Not found
    The requested resource could not be found but may be available in the future. Subsequent requests by the client are permissible.[36]

  451 Unavailable for Legal Reasons
    A server operator has received a legal demand to deny access to a resource or to a set of resources that includes the requested resource.[54] The code 451 was chosen as a reference to the novel Fahrenheit 451.

  5xx server errors

  520 - catch all for unknown error

  https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

2. Get vs Post requests
GET requests include all required data in the URL.
  * Parameters remain in browser history because they are part of the URL
  * Can be bookmarked.
  * re-executed but may not be re-submitted to server if the HTML is stored in the browser cache.
  *Easier to hack 
  * only ASCII characters allowed.
  * GET is less secure compared to POST because data sent is part of the URL. So it's saved in browser history and server logs in plaintext.
  * GET method is visible to everyone (it will be displayed in the browser's address bar) and has limits on the amount of information to send.
  * Can be cached

POST requests supply additional data from the client (browser) to the server in the message body.
  * Parameters are not saved in browser history.
  * Can not be bookmarked.
  * The browser usually alerts the user that data will need to be re-submitted.
  * More difficult to hack
  * no restrictions on form, data length. Binary data is also allowed.
  * POST method variables are not displayed in the URL.
  * Not cached













