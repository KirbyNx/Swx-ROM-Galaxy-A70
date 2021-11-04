.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    .line 1032
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler$1;->this$1:Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 1040
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 1036
    return-void
.end method
