.class public final synthetic Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iput-object p2, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;->f$1:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$kUZGnqbr1oFnqtNxrgrGptrpPnM;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$waitForAsync$0$StorageUserConnection$ActiveConnection(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V

    return-void
.end method
