client.fetchEntryWithIdentifier("nyancat",
    success: { (response: CDAResponse!, entry: CDAEntry!) -> Void in
    println(entry.fields["name"])
    println((entry.fields as NSDictionary).allKeys)

    var imageURL = (entry.fields["image"] as CDAAsset).URL
    var imageData = NSData(contentsOfURL:imageURL)
    var image = NSImage(data:imageData)
    },

    failure: { (response: CDAResponse!, error: NSError!) -> Void in println(error) })
