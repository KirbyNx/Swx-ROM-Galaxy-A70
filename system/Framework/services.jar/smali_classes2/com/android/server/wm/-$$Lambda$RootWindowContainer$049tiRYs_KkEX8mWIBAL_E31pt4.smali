.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$049tiRYs_KkEX8mWIBAL_E31pt4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$049tiRYs_KkEX8mWIBAL_E31pt4;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$049tiRYs_KkEX8mWIBAL_E31pt4;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$getFreeformStacks$20(Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
