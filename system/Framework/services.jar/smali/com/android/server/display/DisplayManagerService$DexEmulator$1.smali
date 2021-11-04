.class Lcom/android/server/display/DisplayManagerService$DexEmulator$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$DexEmulator;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$DexEmulator;

.field final synthetic val$commandStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$DexEmulator;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/display/DisplayManagerService$DexEmulator;

    .line 5314
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator$1;->this$1:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator$1;->val$commandStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5317
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator$1;->this$1:Lcom/android/server/display/DisplayManagerService$DexEmulator;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$DexEmulator;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DexEmulator$1;->val$commandStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5318
    return-void
.end method
