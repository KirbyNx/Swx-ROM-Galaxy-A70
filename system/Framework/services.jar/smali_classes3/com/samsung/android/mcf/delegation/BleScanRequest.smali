.class public Lcom/samsung/android/mcf/delegation/BleScanRequest;
.super Ljava/lang/Object;
.source "BleScanRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/delegation/BleScanRequest$Builder;
    }
.end annotation


# static fields
.field public static final API_GET_ALL:Ljava/lang/String; = "getAll"

.field public static final API_GET_ALL_BY_PKG:Ljava/lang/String; = "getAllByPkg"

.field public static final API_GET_COUNT:Ljava/lang/String; = "getScanRequestCount"

.field public static final API_REGISTER:Ljava/lang/String; = "registerScanRequest"

.field public static final API_UNREGISTER:Ljava/lang/String; = "unregisterScanRequest"

.field public static final API_UNREGISTER_ALL:Ljava/lang/String; = "unregisterAll"

.field public static final API_UNREGISTER_ALL_BY_PKG:Ljava/lang/String; = "unregisterAllByPkg"

.field public static final KEY_APP_DATA:Ljava/lang/String; = "appData"

.field public static final KEY_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_JSON_STRING:Ljava/lang/String; = "objString"

.field public static final KEY_LIST:Ljava/lang/String; = "reqList"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field public static final KEY_RETURN:Ljava/lang/String; = "return"

.field public static final KEY_SCAN_ACTION:Ljava/lang/String; = "scanAction"

.field public static final KEY_SCAN_ERROR:Ljava/lang/String; = "scanError"

.field public static final KEY_SCAN_OFF_FILTER:Ljava/lang/String; = "bleScanOffFilter"

.field public static final KEY_SCAN_ON_FILTER:Ljava/lang/String; = "bleScanOnFilter"

.field public static final KEY_SCAN_RESULT:Ljava/lang/String; = "scanResults"

.field public static final KEY_SCAN_SETTINGS:Ljava/lang/String; = "scanSettings"

.field public static final TAG:Ljava/lang/String; = "BleScanRequest"

.field public static final URI_API:Landroid/net/Uri;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final requestId:I

.field public final scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

.field public final scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

.field public final screenOffFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final screenOnFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 41
    const-string v0, "content://com.samsung.android.mcfserver.provider/api"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->URI_API:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/delegation/BleScanAction;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    .line 175
    iput-object p3, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    .line 176
    iput-object p4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    .line 177
    iput-object p5, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    .line 178
    iput-object p6, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanRequest;
    .registers 13

    .line 275
    const-string v0, "scanAction"

    const-string v1, "scanSettings"

    const-string v2, "bleScanOffFilter"

    const-string v3, "bleScanOnFilter"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 276
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 283
    const/4 v11, 0x0

    :try_start_13
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "packageName"

    .line 284
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "requestId"

    .line 285
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 287
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v9, 0x0

    if-eqz p0, :cond_46

    .line 288
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    move v3, v9

    .line 289
    :goto_30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_46

    .line 290
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/mcf/ble/BleScanFilter;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v10

    if-eqz v10, :cond_43

    .line 292
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_46
    nop

    .line 297
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_67

    .line 298
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 299
    :goto_51
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_67

    .line 300
    invoke-virtual {p0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 302
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    :cond_67
    nop

    .line 307
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_78

    .line 308
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/ble/BleScanSettings;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object p0

    move-object v9, p0

    goto :goto_79

    .line 307
    :cond_78
    move-object v9, v11

    .line 308
    :goto_79
    nop

    .line 311
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8a

    .line 312
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->fromJsonString(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction;

    move-result-object p0

    move-object v10, p0

    goto :goto_8b

    .line 311
    :cond_8a
    move-object v10, v11

    .line 315
    :goto_8b
    new-instance p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/mcf/delegation/BleScanRequest;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/delegation/BleScanAction;)V
    :try_end_91
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_91} :catch_92

    return-object p0

    .line 319
    :catch_92
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BleScanRequest"

    const-string v1, "fromJsonString - "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method


# virtual methods
.method public convertScreenOffFilters()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 388
    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public covertScreenOnFilters()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 373
    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 4

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    const-string v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/mcf/delegation/BleScanRequest;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objString"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .line 254
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s/%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFilterCount()I
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_11

    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    goto :goto_13

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    :goto_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    .line 199
    iget v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    return v0
.end method

.method public getScanAction()Lcom/samsung/android/mcf/delegation/BleScanAction;
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    return-object v0
.end method

.method public getScanSettings()Lcom/samsung/android/mcf/ble/BleScanSettings;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    return-object v0
.end method

.method public getScreenOffFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenOnFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isValidRegisterScanInfo()Z
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "isValidRegisterScanInfo "

    const-string v3, "BleScanRequest"

    if-eqz v0, :cond_14

    .line 400
    const-string v0, "PackageName is empty"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_15

    .line 399
    :cond_14
    const/4 v0, 0x1

    .line 404
    :goto_15
    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 405
    const-string v0, " BleScanFilter is empty"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 409
    :cond_2b
    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-nez v4, :cond_35

    .line 410
    const-string v0, " BleScanSettings is empty"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 414
    :cond_35
    iget-object v4, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-nez v4, :cond_3f

    .line 415
    const-string v0, " Scan action is empty"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 414
    :cond_3f
    move v1, v0

    .line 415
    :goto_40
    return v1
.end method

.method public sendScanError(Landroid/content/Context;I)V
    .registers 6

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    const-string v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const-string v1, "scanError"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    iget-object p2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public sendScanResult(Landroid/content/Context;Landroid/bluetooth/le/ScanResult;)V
    .registers 6

    .line 425
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    const-string v2, "requestId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string v1, "scanResults"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 428
    iget-object p2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/mcf/delegation/BleScanAction;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 5

    .line 329
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "packageName"

    .line 331
    :try_start_7
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_8e

    const-string v1, "requestId"

    .line 332
    :try_start_e
    iget v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 335
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 336
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 337
    invoke-virtual {v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_26

    :cond_3a
    const-string v2, "bleScanOnFilter"

    .line 339
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    :cond_3f
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 343
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 344
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 345
    invoke-virtual {v3}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_52

    :cond_66
    const-string v2, "bleScanOffFilter"

    .line 347
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    :cond_6b
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_6d} :catch_8e

    if-eqz v1, :cond_7a

    const-string v1, "scanSettings"

    .line 351
    :try_start_71
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanSettings;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    :cond_7a
    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_7c} :catch_8e

    if-eqz v1, :cond_89

    const-string v1, "scanAction"

    .line 355
    :try_start_80
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/delegation/BleScanAction;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    :cond_89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_8d} :catch_8e

    return-object v0

    .line 359
    :catch_8e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleScanRequest"

    const-string v2, "toJsonObject : "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    const-string v1, "BleScanRequest : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/16 v3, 0x9

    if-nez v2, :cond_5e

    .line 448
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "screenOnFilters - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOnFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 450
    const-string v5, "\t\t\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 454
    :cond_5e
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9c

    .line 455
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "screenOffFilters - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->screenOffFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/mcf/ble/BleScanFilter;

    .line 457
    const-string v5, "\t\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/mcf/ble/BleScanFilter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 461
    :cond_9c
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    if-eqz v2, :cond_af

    .line 462
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanSettings:Lcom/samsung/android/mcf/ble/BleScanSettings;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ble/BleScanSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    :cond_af
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    if-eqz v2, :cond_c2

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Lcom/samsung/android/mcf/delegation/BleScanRequest;->scanAction:Lcom/samsung/android/mcf/delegation/BleScanAction;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    :cond_c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
