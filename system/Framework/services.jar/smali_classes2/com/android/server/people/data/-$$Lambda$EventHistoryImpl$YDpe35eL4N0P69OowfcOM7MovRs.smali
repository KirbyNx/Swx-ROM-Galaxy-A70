.class public final synthetic Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$YDpe35eL4N0P69OowfcOM7MovRs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/EventHistoryImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/EventHistoryImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$YDpe35eL4N0P69OowfcOM7MovRs;->f$0:Lcom/android/server/people/data/EventHistoryImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/people/data/-$$Lambda$EventHistoryImpl$YDpe35eL4N0P69OowfcOM7MovRs;->f$0:Lcom/android/server/people/data/EventHistoryImpl;

    invoke-virtual {v0}, Lcom/android/server/people/data/EventHistoryImpl;->lambda$loadFromDisk$1$EventHistoryImpl()V

    return-void
.end method
