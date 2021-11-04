.class Lcom/android/server/VibratorService$AbortLogInfo;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbortLogInfo"
.end annotation


# instance fields
.field abortedMagnitudeType:Ljava/lang/String;

.field abortedPackageName:Ljava/lang/String;

.field curTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "curTime"    # Ljava/lang/String;
    .param p2, "abortedMagnitudeType"    # Ljava/lang/String;
    .param p3, "abortedPackageName"    # Ljava/lang/String;

    .line 4285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4286
    iput-object p1, p0, Lcom/android/server/VibratorService$AbortLogInfo;->curTime:Ljava/lang/String;

    .line 4287
    iput-object p2, p0, Lcom/android/server/VibratorService$AbortLogInfo;->abortedMagnitudeType:Ljava/lang/String;

    .line 4288
    iput-object p3, p0, Lcom/android/server/VibratorService$AbortLogInfo;->abortedPackageName:Ljava/lang/String;

    .line 4289
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 4293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/VibratorService$AbortLogInfo;->curTime:Ljava/lang/String;

    .line 4294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4295
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4296
    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$AbortLogInfo;->abortedMagnitudeType:Ljava/lang/String;

    .line 4297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4298
    const-string v1, ", pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/VibratorService$AbortLogInfo;->abortedPackageName:Ljava/lang/String;

    .line 4299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4293
    return-object v0
.end method
