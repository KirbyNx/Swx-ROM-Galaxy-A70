.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$sUctzfuzb6idDEoJXr_bRb2QTFU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/LinkedList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$sUctzfuzb6idDEoJXr_bRb2QTFU;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$sUctzfuzb6idDEoJXr_bRb2QTFU;->f$1:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$sUctzfuzb6idDEoJXr_bRb2QTFU;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$sUctzfuzb6idDEoJXr_bRb2QTFU;->f$1:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->lambda$schedulePendingSystemServerWtfs$7$ActivityManagerService(Ljava/util/LinkedList;)V

    return-void
.end method
