let httpError = (404, "Pinche error")
let (error, msg) = httpError

print(error)
print(msg)

print("Error code = \(httpError.0)")

let http200 = (statusCode: 200, msg: "Hello, iam 200")
print(http200.statusCode)

