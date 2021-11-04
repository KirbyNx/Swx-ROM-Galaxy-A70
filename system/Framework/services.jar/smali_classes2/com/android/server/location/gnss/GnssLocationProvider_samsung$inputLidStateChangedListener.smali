.class public Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"

# interfaces
.implements Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "inputLidStateChangedListener"
.end annotation


# instance fields
.field mLidState:I

.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 4234
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLidStateChanged(JI)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidState"    # I

    .line 4239
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;->mLidState:I

    .line 4240
    if-ltz p3, :cond_38

    .line 4241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLidStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;->mLidState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    const/16 v1, 0x18

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LID_STATE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$inputLidStateChangedListener;->mLidState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$900(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;IILjava/lang/Object;)V

    .line 4244
    :cond_38
    return-void
.end method
