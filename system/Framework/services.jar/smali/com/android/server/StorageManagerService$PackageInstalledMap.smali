.class Lcom/android/server/StorageManagerService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstalledMap"
.end annotation


# instance fields
.field public final external:Z

.field public final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "id"    # Ljava/lang/String;

    .line 568
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    .line 571
    return-void
.end method

.method constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "exter"    # Z

    .line 563
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p2, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 565
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    .line 566
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 574
    instance-of v0, p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    if-eqz v0, :cond_10

    .line 576
    move-object v0, p1

    check-cast v0, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 578
    .local v0, "tmp":Lcom/android/server/StorageManagerService$PackageInstalledMap;
    iget-object v1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 581
    .end local v0    # "tmp":Lcom/android/server/StorageManagerService$PackageInstalledMap;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 584
    iget-object v0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
