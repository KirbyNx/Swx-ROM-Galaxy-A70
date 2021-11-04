.class Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
.super Ljava/lang/Object;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundPathInfo"
.end annotation


# static fields
.field private static final PATH_SPLITTER:Ljava/lang/String; = ","


# instance fields
.field attachSoundPath:Ljava/lang/String;

.field detachSoundPath:Ljava/lang/String;

.field private final mWriteSettingHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method private constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;

    invoke-direct {p1, p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;)V

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;Lcom/android/server/smartclip/SpenThemeManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/smartclip/SpenThemeManager;
    .param p2, "x1"    # Lcom/android/server/smartclip/SpenThemeManager$1;

    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    return-void
.end method


# virtual methods
.method getPaths()Ljava/lang/String;
    .registers 5

    .line 439
    const-string v0, ""

    .line 440
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get paths = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-object v0
.end method

.method handleWriteSetting(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 468
    if-nez p1, :cond_3

    .line 469
    return-void

    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->getPaths()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "paths":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write setting paths = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    nop

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    .line 475
    const-string/jumbo v3, "pen_detachment_notification"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 481
    return-void
.end method

.method readSetting(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 449
    if-nez p1, :cond_3

    .line 450
    return-void

    .line 453
    :cond_3
    nop

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    .line 453
    const-string/jumbo v2, "pen_detachment_notification"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "paths":Ljava/lang/String;
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read setting paths = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->setPaths(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method setPaths(Ljava/lang/String;)V
    .registers 5
    .param p1, "paths"    # Ljava/lang/String;

    .line 424
    # getter for: Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set paths = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 426
    return-void

    .line 429
    :cond_20
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "pathList":[Ljava/lang/String;
    if-eqz v0, :cond_38

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2d

    goto :goto_38

    .line 434
    :cond_2d
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 435
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 436
    return-void

    .line 431
    :cond_38
    :goto_38
    return-void
.end method

.method setPaths(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "attachSoundPath"    # Ljava/lang/String;
    .param p2, "detachSoundPath"    # Ljava/lang/String;

    .line 419
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 420
    iput-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detach sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeSetting(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 464
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->mWriteSettingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method
