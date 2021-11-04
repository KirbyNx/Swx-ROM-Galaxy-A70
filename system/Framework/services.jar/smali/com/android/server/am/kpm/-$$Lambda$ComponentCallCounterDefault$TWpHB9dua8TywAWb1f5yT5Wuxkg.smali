.class public final synthetic Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$TWpHB9dua8TywAWb1f5yT5Wuxkg;
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

    iput-object p1, p0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$TWpHB9dua8TywAWb1f5yT5Wuxkg;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/kpm/-$$Lambda$ComponentCallCounterDefault$TWpHB9dua8TywAWb1f5yT5Wuxkg;->f$0:Ljava/util/List;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->lambda$toList$1(Ljava/util/List;Ljava/util/Map$Entry;)V

    return-void
.end method
