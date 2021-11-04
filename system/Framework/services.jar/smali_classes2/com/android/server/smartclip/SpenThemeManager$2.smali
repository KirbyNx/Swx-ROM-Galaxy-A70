.class Lcom/android/server/smartclip/SpenThemeManager$2;
.super Landroid/os/Handler;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/smartclip/SpenThemeManager;

    .line 82
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 87
    return-void

    .line 90
    :cond_b
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->clearCustomDoubleTapAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->clearPenHoverIcon(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->clearPenAttachSound(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$2;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->clearPenDetachSound(Ljava/lang/String;)V

    .line 94
    return-void
.end method
