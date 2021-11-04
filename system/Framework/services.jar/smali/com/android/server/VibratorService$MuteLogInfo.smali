.class Lcom/android/server/VibratorService$MuteLogInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MuteLogInfo"
.end annotation


# instance fields
.field curTime:Ljava/lang/String;

.field setMagnitudeType:Ljava/lang/String;

.field setPackageName:Ljava/lang/String;

.field setState:Ljava/lang/String;

.field setToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "curTime"    # Ljava/lang/String;
    .param p2, "setMagnitudeType"    # Ljava/lang/String;
    .param p3, "setPackageName"    # Ljava/lang/String;
    .param p4, "setToken"    # Ljava/lang/String;
    .param p5, "setState"    # Ljava/lang/String;

    .line 4254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4255
    iput-object p1, p0, Lcom/android/server/VibratorService$MuteLogInfo;->curTime:Ljava/lang/String;

    .line 4256
    iput-object p2, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setMagnitudeType:Ljava/lang/String;

    .line 4257
    iput-object p3, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setPackageName:Ljava/lang/String;

    .line 4258
    iput-object p4, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setToken:Ljava/lang/String;

    .line 4259
    iput-object p5, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setState:Ljava/lang/String;

    .line 4260
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 4264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/VibratorService$MuteLogInfo;->curTime:Ljava/lang/String;

    .line 4265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4266
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4267
    const-string/jumbo v1, "setType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setMagnitudeType:Ljava/lang/String;

    .line 4268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4269
    const-string v1, ", setPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setPackageName:Ljava/lang/String;

    .line 4270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4271
    const-string v1, ", set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setToken:Ljava/lang/String;

    .line 4272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4273
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$MuteLogInfo;->setState:Ljava/lang/String;

    .line 4274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4264
    return-object v0
.end method
