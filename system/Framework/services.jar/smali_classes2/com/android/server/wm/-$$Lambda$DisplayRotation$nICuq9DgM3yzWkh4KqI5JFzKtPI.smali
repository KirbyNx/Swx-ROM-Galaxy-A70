.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayRotation$nICuq9DgM3yzWkh4KqI5JFzKtPI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotation;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation;[Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$nICuq9DgM3yzWkh4KqI5JFzKtPI;->f$0:Lcom/android/server/wm/DisplayRotation;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$nICuq9DgM3yzWkh4KqI5JFzKtPI;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$nICuq9DgM3yzWkh4KqI5JFzKtPI;->f$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayRotation$nICuq9DgM3yzWkh4KqI5JFzKtPI;->f$1:[Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayRotation;->lambda$onSeamlessRotationTimeout$3$DisplayRotation([ZLcom/android/server/wm/WindowState;)V

    return-void
.end method
