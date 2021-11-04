.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 904
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .line 922
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 13
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 906
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    .line 907
    .local v0, "coverState":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 909
    .local v1, "whenNanos":J
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSensorChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I
    invoke-static {v5}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v3, 0x1

    if-ne v0, v3, :cond_53

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I
    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v4

    if-eq v4, v3, :cond_53

    .line 912
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-wide v6, v1

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZIZ)V
    invoke-static/range {v5 .. v10}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;JZIZ)V

    .line 913
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I
    invoke-static {v3, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2402(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 914
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addSensorRecord(I)V
    invoke-static {v3, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    goto :goto_70

    .line 915
    :cond_53
    if-nez v0, :cond_70

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I
    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2400(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v3

    if-eqz v3, :cond_70

    .line 916
    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-wide v6, v1

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZIZ)V
    invoke-static/range {v5 .. v10}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;JZIZ)V

    .line 917
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I
    invoke-static {v3, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2402(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 918
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->addSensorRecord(I)V
    invoke-static {v3, v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 920
    :cond_70
    :goto_70
    return-void
.end method
