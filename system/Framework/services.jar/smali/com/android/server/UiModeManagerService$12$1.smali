.class Lcom/android/server/UiModeManagerService$12$1;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/UiModeManagerService$12;->setNightMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/UiModeManagerService$12;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService$12;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/UiModeManagerService$12;

    .line 841
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$12$1;->this$1:Lcom/android/server/UiModeManagerService$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12$1;->this$1:Lcom/android/server/UiModeManagerService$12;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/UiModeManagerService;->mAllowChangeImmediately:Z
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$802(Lcom/android/server/UiModeManagerService;Z)Z

    .line 845
    return-void
.end method
