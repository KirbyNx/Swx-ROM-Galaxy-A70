.class public final synthetic Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueue;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[J

.field public final synthetic f$3:[J

.field public final synthetic f$4:[J

.field public final synthetic f$5:Landroid/os/DropBoxManager;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueue;[Ljava/lang/String;[J[J[JLandroid/os/DropBoxManager;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$0:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$2:[J

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$3:[J

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$4:[J

    iput-object p6, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$5:Landroid/os/DropBoxManager;

    iput-object p7, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$2:[J

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$3:[J

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$4:[J

    iget-object v5, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$5:Landroid/os/DropBoxManager;

    iget-object v6, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$IwOj92zF2HnULQrgZw79eAKwv8c;->f$6:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueue;->lambda$addBroadcastToHistoryLocked$1$BroadcastQueue([Ljava/lang/String;[J[J[JLandroid/os/DropBoxManager;Ljava/lang/String;)V

    return-void
.end method
