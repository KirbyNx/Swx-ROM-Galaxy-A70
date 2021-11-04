.class public final synthetic Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$t5io8xLw-y-yEq58rI5CzIB-a0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$t5io8xLw-y-yEq58rI5CzIB-a0o;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$t5io8xLw-y-yEq58rI5CzIB-a0o;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->lambda$toMap$0(Ljava/util/Map;Ljava/util/Map$Entry;)V

    return-void
.end method
