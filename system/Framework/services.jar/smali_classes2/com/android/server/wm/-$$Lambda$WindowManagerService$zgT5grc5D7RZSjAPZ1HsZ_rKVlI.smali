.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$zgT5grc5D7RZSjAPZ1HsZ_rKVlI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$zgT5grc5D7RZSjAPZ1HsZ_rKVlI;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$zgT5grc5D7RZSjAPZ1HsZ_rKVlI;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$zgT5grc5D7RZSjAPZ1HsZ_rKVlI;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$zgT5grc5D7RZSjAPZ1HsZ_rKVlI;->f$1:I

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$addFixedRefreshRatePackage$18(Ljava/lang/String;ILcom/android/server/wm/DisplayContent;)V

    return-void
.end method
