var request : CDARequest = client.fetchContentTypesWithSuccess(
    { (response: CDAResponse!, contentTypes: CDAArray!) -> Void in
        var ct : CDAContentType = contentTypes.items[0] as CDAContentType
        NSLog("%@\nfields: %@", ct, ct.fields)
    },
    failure: { (response: CDAResponse!, error: NSError!) -> Void in println(error) })
