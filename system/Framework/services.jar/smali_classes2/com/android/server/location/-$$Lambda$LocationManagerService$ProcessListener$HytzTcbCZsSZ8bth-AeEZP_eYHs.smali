.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$ProcessListener$HytzTcbCZsSZ8bth-AeEZP_eYHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService$ProcessListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService$ProcessListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$ProcessListener$HytzTcbCZsSZ8bth-AeEZP_eYHs;->f$0:Lcom/android/server/location/LocationManagerService$ProcessListener;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$ProcessListener$HytzTcbCZsSZ8bth-AeEZP_eYHs;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$ProcessListener$HytzTcbCZsSZ8bth-AeEZP_eYHs;->f$0:Lcom/android/server/location/LocationManagerService$ProcessListener;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$ProcessListener$HytzTcbCZsSZ8bth-AeEZP_eYHs;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService$ProcessListener;->lambda$onProcessDied$0$LocationManagerService$ProcessListener(I)V

    return-void
.end method
