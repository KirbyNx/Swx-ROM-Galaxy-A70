.class public final synthetic Lcom/android/server/tv/-$$Lambda$TvRemoteProviderWatcher$dDERmcw8SCyoq7X1l50jggUVY28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/tv/TvRemoteProviderWatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/-$$Lambda$TvRemoteProviderWatcher$dDERmcw8SCyoq7X1l50jggUVY28;->f$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/tv/-$$Lambda$TvRemoteProviderWatcher$dDERmcw8SCyoq7X1l50jggUVY28;->f$0:Lcom/android/server/tv/TvRemoteProviderWatcher;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderWatcher;->lambda$new$0$TvRemoteProviderWatcher(Ljava/lang/String;)V

    return-void
.end method
