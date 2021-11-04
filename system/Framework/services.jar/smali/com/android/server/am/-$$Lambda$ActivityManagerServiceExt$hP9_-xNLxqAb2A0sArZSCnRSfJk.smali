.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;->f$2:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$hP9_-xNLxqAb2A0sArZSCnRSfJk;->f$2:Lcom/android/server/am/ProcessRecord;

    check-cast p1, Lcom/samsung/android/sysint/SemSysIntManager;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$promoteAsLongLivePackageIfNeededLocked$2$ActivityManagerServiceExt(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V

    return-void
.end method
