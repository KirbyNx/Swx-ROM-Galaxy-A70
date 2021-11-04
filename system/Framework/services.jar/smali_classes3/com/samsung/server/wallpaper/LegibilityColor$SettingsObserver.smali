.class Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LegibilityColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/LegibilityColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;


# direct methods
.method constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;)V
    .registers 2

    .line 519
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 520
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 521
    return-void
.end method


# virtual methods
.method public init()V
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$300(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 526
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$300(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sehome_portrait_mode_only"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 528
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    # getter for: Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$300(Lcom/samsung/server/wallpaper/LegibilityColor;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 530
    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 534
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 536
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$400(Lcom/samsung/server/wallpaper/LegibilityColor;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateSystem(Z)V

    .line 537
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    const/4 v1, 0x2

    # invokes: Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->access$400(Lcom/samsung/server/wallpaper/LegibilityColor;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->setAllowScreenRotateLock(Z)V

    .line 538
    return-void
.end method
