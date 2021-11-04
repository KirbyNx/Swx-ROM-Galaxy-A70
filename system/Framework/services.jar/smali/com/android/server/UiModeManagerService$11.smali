.class Lcom/android/server/UiModeManagerService$11;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 596
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$11;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/UiModeManagerService;->mAllowChangeImmediately:Z
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$802(Lcom/android/server/UiModeManagerService;Z)Z

    .line 600
    return-void
.end method
