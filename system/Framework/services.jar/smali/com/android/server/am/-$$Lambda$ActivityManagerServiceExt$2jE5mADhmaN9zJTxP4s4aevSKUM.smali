.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iput-boolean p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$1:Z

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$3:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-boolean v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$1:Z

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerServiceExt$2jE5mADhmaN9zJTxP4s4aevSKUM;->f$3:Lcom/android/server/am/ProcessRecord;

    check-cast p1, Lcom/samsung/android/sysint/SemSysIntManager;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->lambda$markAsDedicatedProcessNameIfAliveLocked$4$ActivityManagerServiceExt(ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/samsung/android/sysint/SemSysIntManager;)V

    return-void
.end method
