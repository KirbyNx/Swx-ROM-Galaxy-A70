.class public final synthetic Lcom/samsung/android/server/continuity/-$$Lambda$McfDeviceSyncManager$ML0Cn0xuB7_60MO0Q5sUYh4pg6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/-$$Lambda$McfDeviceSyncManager$ML0Cn0xuB7_60MO0Q5sUYh4pg6o;->f$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/continuity/-$$Lambda$McfDeviceSyncManager$ML0Cn0xuB7_60MO0Q5sUYh4pg6o;->f$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->lambda$bindMcf$0$McfDeviceSyncManager(I)V

    return-void
.end method
