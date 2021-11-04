.class Lcom/android/server/smartclip/SpenGestureManagerService$7;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->showTouchPointer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

.field final synthetic val$isShow:Z


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 1566
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iput-boolean p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1569
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1570
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$7;->val$isShow:Z

    const-string/jumbo v2, "show_touches"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1571
    return-void
.end method
