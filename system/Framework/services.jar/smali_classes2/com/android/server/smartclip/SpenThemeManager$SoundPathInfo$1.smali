.class Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;
.super Landroid/os/Handler;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 408
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;->this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 411
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Context;

    if-nez v0, :cond_7

    .line 412
    return-void

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo$1;->this$1:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->handleWriteSetting(Landroid/content/Context;)V

    .line 415
    return-void
.end method
