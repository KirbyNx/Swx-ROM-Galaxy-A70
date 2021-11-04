.class public final Lcom/android/server/location/LocationRequestInfo$Builder;
.super Ljava/lang/Object;
.source "LocationRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private backgroundTime:J

.field private interval:J

.field private isAllowed:Z

.field private isForeground:Z

.field private isHighPowerRequest:Z

.field private isListenerType:Z

.field private listenerId:Ljava/lang/String;

.field private maxWaitTime:J

.field private numUpdates:I

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private provider:Ljava/lang/String;

.field private quality:I

.field private requestTime:J

.field private requester:I

.field private uid:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->numUpdates:I

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/LocationRequestInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isForeground:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/LocationRequestInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->numUpdates:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/LocationRequestInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->uid:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/LocationRequestInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->pid:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/LocationRequestInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isListenerType:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/LocationRequestInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isAllowed:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/LocationRequestInfo$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isHighPowerRequest:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/LocationRequestInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->quality:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LocationRequestInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->requestTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/location/LocationRequestInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->backgroundTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/location/LocationRequestInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->interval:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/location/LocationRequestInfo$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->maxWaitTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/location/LocationRequestInfo$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationRequestInfo$Builder;

    .line 143
    iget v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->requester:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/location/LocationRequestInfo;
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 249
    new-instance v0, Lcom/android/server/location/LocationRequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/LocationRequestInfo;-><init>(Lcom/android/server/location/LocationRequestInfo$Builder;Lcom/android/server/location/LocationRequestInfo$1;)V

    return-object v0

    .line 242
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New requestInfo mandatory fields are null,PackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ListenerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/isAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowed(Z)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "isAllowed"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isAllowed:Z

    .line 232
    return-object p0
.end method

.method public setBackgroundTime(J)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 3
    .param p1, "backgroundTime"    # J

    .line 196
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->backgroundTime:J

    .line 197
    return-object p0
.end method

.method public setForeground(Z)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "isForeground"    # Z

    .line 216
    iput-boolean p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isForeground:Z

    .line 217
    return-object p0
.end method

.method public setHighPowerRequest(Z)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "isHighPowerRequest"    # Z

    .line 236
    iput-boolean p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isHighPowerRequest:Z

    .line 237
    return-object p0
.end method

.method public setInterval(J)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 3
    .param p1, "interval"    # J

    .line 201
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->interval:J

    .line 202
    return-object p0
.end method

.method public setListenerId(Ljava/lang/String;)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "listenerId"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setListenerType(Z)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "isListenerType"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->isListenerType:Z

    .line 227
    return-object p0
.end method

.method public setMaxWaitTime(J)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 3
    .param p1, "maxWaitTime"    # J

    .line 206
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->maxWaitTime:J

    .line 207
    return-object p0
.end method

.method public setNumUpdates(I)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "numUpdates"    # I

    .line 221
    iput p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->numUpdates:I

    .line 222
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public setPid(I)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "pid"    # I

    .line 258
    iput p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->pid:I

    .line 259
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setQuality(I)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "quality"    # I

    .line 186
    iput p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->quality:I

    .line 187
    return-object p0
.end method

.method public setRequestTime(J)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 3
    .param p1, "requestTime"    # J

    .line 191
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->requestTime:J

    .line 192
    return-object p0
.end method

.method public setRequester(I)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "requester"    # I

    .line 211
    iput p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->requester:I

    .line 212
    return-object p0
.end method

.method public setUid(I)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "uid"    # I

    .line 253
    iput p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->uid:I

    .line 254
    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/android/server/location/LocationRequestInfo$Builder;
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/android/server/location/LocationRequestInfo$Builder;->versionName:Ljava/lang/String;

    .line 172
    return-object p0
.end method
