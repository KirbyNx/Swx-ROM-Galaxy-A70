.class public Lcom/samsung/android/server/audio/RecordingPopupHelper;
.super Ljava/lang/Object;
.source "RecordingPopupHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AS.RecordingPopupHelper"

.field private static sOldPortId:I

.field private static sPreviousTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sOldPortId:I

    .line 35
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sPreviousTime:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static getAppName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 70
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 73
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_15} :catch_16

    return-object v3

    .line 74
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_16
    move-exception v2

    .line 75
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RECORDING POPUP] getAppName can\'t find the name of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.RecordingPopupHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, "r":Landroid/content/res/Resources;
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_3d

    .line 79
    const v3, 0x1040164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 81
    :cond_3d
    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static notifyRecordingPopup(Landroid/os/Handler;II)V
    .registers 10
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "uid"    # I
    .param p2, "portId"    # I

    .line 48
    const-string v0, "AS.RecordingPopupHelper"

    if-nez p0, :cond_a

    .line 49
    const-string v1, "[RECORDING POPUP] There is no audio handler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 53
    :cond_a
    sget v1, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sOldPortId:I

    if-eq v1, p2, :cond_5d

    .line 54
    sput p2, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sOldPortId:I

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 56
    .local v1, "currentTime":J
    sget-wide v3, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sPreviousTime:J

    sub-long v3, v1, v3

    .line 57
    .local v3, "periodTime":J
    sput-wide v1, Lcom/samsung/android/server/audio/RecordingPopupHelper;->sPreviousTime:J

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RECORDING POPUP] notifyRecordingPopup uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " portId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " periodTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    const-wide/16 v5, 0xfa0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-lez v5, :cond_54

    .line 61
    invoke-virtual {p0, v0, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5d

    .line 63
    :cond_54
    invoke-virtual {p0, v0, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v5, 0xbb8

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    .end local v1    # "currentTime":J
    .end local v3    # "periodTime":J
    :cond_5d
    :goto_5d
    return-void
.end method

.method public static showRecordingPopup(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 42
    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/RecordingPopupHelper;->getAppName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "appName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v3, 0x1040a1d

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "popupMsg":Ljava/lang/String;
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method
