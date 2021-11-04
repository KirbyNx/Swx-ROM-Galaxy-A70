.class public Lcom/android/server/location/LocationRequestInfo;
.super Ljava/lang/Object;
.source "LocationRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationRequestInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/location/LocationRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundDuration:J

.field private backgroundTime:J

.field private clonedTime:J

.field private fixCount:I

.field private interval:J

.field private isAllowed:Z

.field private isBicycleApp:Z

.field private isDummy:Z

.field private isForeground:Z

.field private isHighPowerRequest:Z

.field private isListenerType:Z

.field private isPassive:Z

.field private isSystemApp:Z

.field private isTrackingApp:Z

.field private isTrackingMode:Z

.field private lastUpdateTime:J

.field private lineNumber:I

.field private listenerId:Ljava/lang/String;

.field private maxWaitTime:J

.field private methodName:Ljava/lang/String;

.field private numUpdates:I

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private provider:Ljava/lang/String;

.field private quality:I

.field private removedTime:J

.field private requestTime:J

.field private requester:I

.field private uid:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 424
    new-instance v0, Lcom/android/server/location/LocationRequestInfo$1;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/location/LocationRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isPassive:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isHighPowerRequest:Z

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/LocationRequestInfo;->lastUpdateTime:J

    .line 53
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isTrackingApp:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isTrackingMode:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isBicycleApp:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isDummy:Z

    .line 60
    iput-wide v1, p0, Lcom/android/server/location/LocationRequestInfo;->clonedTime:J

    .line 61
    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->fixCount:I

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/LocationRequestInfo;->isAllowed:Z

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/LocationRequestInfo;->quality:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->requestTime:J

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->removedTime:J

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundTime:J

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundDuration:J

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->interval:J

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->maxWaitTime:J

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/LocationRequestInfo;->requester:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6b

    move v2, v1

    goto :goto_6c

    :cond_6b
    move v2, v0

    :goto_6c
    iput-boolean v2, p0, Lcom/android/server/location/LocationRequestInfo;->isForeground:Z

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/LocationRequestInfo;->numUpdates:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/LocationRequestInfo;->uid:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/LocationRequestInfo;->pid:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/LocationRequestInfo;->lineNumber:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/LocationRequestInfo;->methodName:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_94

    move v2, v1

    goto :goto_95

    :cond_94
    move v2, v0

    :goto_95
    iput-boolean v2, p0, Lcom/android/server/location/LocationRequestInfo;->isListenerType:Z

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9f

    move v2, v1

    goto :goto_a0

    :cond_9f
    move v2, v0

    :goto_a0
    iput-boolean v2, p0, Lcom/android/server/location/LocationRequestInfo;->isSystemApp:Z

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_aa

    move v2, v1

    goto :goto_ab

    :cond_aa
    move v2, v0

    :goto_ab
    iput-boolean v2, p0, Lcom/android/server/location/LocationRequestInfo;->isPassive:Z

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_b5

    move v2, v1

    goto :goto_b6

    :cond_b5
    move v2, v0

    :goto_b6
    iput-boolean v2, p0, Lcom/android/server/location/LocationRequestInfo;->isHighPowerRequest:Z

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->lastUpdateTime:J

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_c5

    move v0, v1

    :cond_c5
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isAllowed:Z

    .line 422
    return-void
.end method

.method private constructor <init>(Lcom/android/server/location/LocationRequestInfo$Builder;)V
    .registers 5
    .param p1, "builder"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isPassive:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isHighPowerRequest:Z

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/LocationRequestInfo;->lastUpdateTime:J

    .line 53
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isTrackingApp:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isTrackingMode:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isBicycleApp:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isDummy:Z

    .line 60
    iput-wide v1, p0, Lcom/android/server/location/LocationRequestInfo;->clonedTime:J

    .line 61
    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->fixCount:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isAllowed:Z

    .line 66
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$000(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 67
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->versionName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$100(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 68
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$200(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 69
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->provider:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$300(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 70
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->quality:I
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$400(Lcom/android/server/location/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->quality:I

    .line 71
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->requestTime:J
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$500(Lcom/android/server/location/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->requestTime:J

    .line 72
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->backgroundTime:J
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$600(Lcom/android/server/location/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundTime:J

    .line 73
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->interval:J
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$700(Lcom/android/server/location/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->interval:J

    .line 74
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->maxWaitTime:J
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$800(Lcom/android/server/location/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->maxWaitTime:J

    .line 75
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->requester:I
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$900(Lcom/android/server/location/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->requester:I

    .line 76
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->isForeground:Z
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$1000(Lcom/android/server/location/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isForeground:Z

    .line 77
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->numUpdates:I
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$1100(Lcom/android/server/location/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->numUpdates:I

    .line 78
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->uid:I
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$1200(Lcom/android/server/location/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->uid:I

    .line 79
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->pid:I
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$1300(Lcom/android/server/location/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->pid:I

    .line 80
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->isListenerType:Z
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$1400(Lcom/android/server/location/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isListenerType:Z

    .line 81
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->isAllowed:Z
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$1500(Lcom/android/server/location/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isAllowed:Z

    .line 82
    # getter for: Lcom/android/server/location/LocationRequestInfo$Builder;->isHighPowerRequest:Z
    invoke-static {p1}, Lcom/android/server/location/LocationRequestInfo$Builder;->access$1600(Lcom/android/server/location/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isHighPowerRequest:Z

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationRequestInfo$Builder;Lcom/android/server/location/LocationRequestInfo$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;
    .param p2, "x1"    # Lcom/android/server/location/LocationRequestInfo$1;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationRequestInfo;-><init>(Lcom/android/server/location/LocationRequestInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public addBGDuration(J)V
    .registers 5
    .param p1, "bgDuration"    # J

    .line 272
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundDuration:J

    .line 273
    return-void
.end method

.method public decrementNumUpdates(J)I
    .registers 4
    .param p1, "time"    # J

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationRequestInfo;->setLastUpdateTime(J)V

    .line 131
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->numUpdates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestInfo;->numUpdates:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public getBGDuration()J
    .registers 7

    .line 316
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->removedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestInfo;->isActiveRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1a

    .line 321
    :cond_f
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 318
    :cond_1a
    :goto_1a
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundDuration:J

    return-wide v0
.end method

.method public getBGTime()J
    .registers 3

    .line 312
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundTime:J

    return-wide v0
.end method

.method public getCallbackType()Ljava/lang/String;
    .registers 2

    .line 106
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isListenerType:Z

    if-eqz v0, :cond_7

    const-string v0, "Listener"

    goto :goto_9

    :cond_7
    const-string v0, "PendingIntent"

    :goto_9
    return-object v0
.end method

.method public getDuration()J
    .registers 5

    .line 326
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestInfo;->isActiveRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->removedTime:J

    :goto_d
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->requestTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getInterval()J
    .registers 3

    .line 334
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->interval:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 135
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public getLineNumber()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->lineNumber:I

    return v0
.end method

.method public getListenerId()Ljava/lang/String;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->listenerId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxWaitTime()J
    .registers 3

    .line 350
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->maxWaitTime:J

    return-wide v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumUpdates()I
    .registers 2

    .line 264
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->numUpdates:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 358
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->pid:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .registers 2

    .line 338
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->quality:I

    return v0
.end method

.method public getRemovedTime()J
    .registers 3

    .line 304
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->removedTime:J

    return-wide v0
.end method

.method public getRequestTime()J
    .registers 3

    .line 300
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->requestTime:J

    return-wide v0
.end method

.method public getRequester()I
    .registers 2

    .line 346
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->requester:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->uid:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isActiveRequest()Z
    .registers 5

    .line 308
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->removedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isForeground()Z
    .registers 2

    .line 342
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isForeground:Z

    return v0
.end method

.method public isHighPowerRequest()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isHighPowerRequest:Z

    return v0
.end method

.method public isListenerType()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isListenerType:Z

    return v0
.end method

.method public isPassive()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isPassive:Z

    return v0
.end method

.method public isSystemApp()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isSystemApp:Z

    return v0
.end method

.method public setBGTime(J)V
    .registers 3
    .param p1, "bgTime"    # J

    .line 268
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundTime:J

    .line 269
    return-void
.end method

.method public setForeground(Z)V
    .registers 2
    .param p1, "isForeground"    # Z

    .line 280
    iput-boolean p1, p0, Lcom/android/server/location/LocationRequestInfo;->isForeground:Z

    .line 281
    return-void
.end method

.method public setInterval(J)V
    .registers 3
    .param p1, "interval"    # J

    .line 284
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo;->interval:J

    .line 285
    return-void
.end method

.method public setLastUpdateTime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 126
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo;->lastUpdateTime:J

    .line 127
    return-void
.end method

.method public setLineNumber(I)V
    .registers 2
    .param p1, "lineNumber"    # I

    .line 90
    iput p1, p0, Lcom/android/server/location/LocationRequestInfo;->lineNumber:I

    .line 91
    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .registers 2
    .param p1, "methodName"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/android/server/location/LocationRequestInfo;->methodName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/server/location/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setRemovedTime(J)V
    .registers 3
    .param p1, "removedTime"    # J

    .line 276
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo;->removedTime:J

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestInfo;->interval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/LocationRequestInfo;->isForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 371
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->listenerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->requestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 377
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->removedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 378
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->backgroundDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 380
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 381
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->maxWaitTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 382
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->requester:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isForeground:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->numUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo;->lineNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isListenerType:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 390
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isSystemApp:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 391
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isPassive:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 392
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isHighPowerRequest:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 393
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 394
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo;->isAllowed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 395
    return-void
.end method
