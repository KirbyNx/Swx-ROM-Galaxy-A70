.class public final synthetic Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[B

.field public final synthetic f$1:[B

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>([B[BZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;->f$0:[B

    iput-object p2, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;->f$1:[B

    iput-boolean p3, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;->f$0:[B

    iget-object v1, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;->f$1:[B

    iget-boolean v2, p0, Lcom/android/server/sepunion/friends/-$$Lambda$FrsServiceImpl$BkumhdpqvEC9zBX3pbElKgPQqH0;->f$2:Z

    check-cast p1, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->lambda$hasMappedAccessory$0([B[BZLcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result p1

    return p1
.end method
