.class public interface abstract Lcom/android/server/am/kpm/ComponentCallCounter;
.super Ljava/lang/Object;
.source "ComponentCallCounter.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract countActivity(Ljava/lang/String;)V
.end method

.method public abstract countBroadcast(Ljava/lang/String;)V
.end method

.method public abstract countContentProvider(Ljava/lang/String;)V
.end method

.method public abstract countService(Ljava/lang/String;)V
.end method

.method public abstract getStartTimeMillis()J
.end method

.method public abstract toList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/kpm/CallCount;",
            ">;"
        }
    .end annotation
.end method
