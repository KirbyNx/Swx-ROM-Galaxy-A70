.class public final synthetic Lcom/samsung/android/mcf/common/-$$Lambda$DLog$ICJ-vPq35AvoqqLNHvqwW9bptSg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/common/-$$Lambda$DLog$ICJ-vPq35AvoqqLNHvqwW9bptSg;->f$0:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/common/-$$Lambda$DLog$ICJ-vPq35AvoqqLNHvqwW9bptSg;->f$0:Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/common/DLog;->lambda$secureJson$0(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method
