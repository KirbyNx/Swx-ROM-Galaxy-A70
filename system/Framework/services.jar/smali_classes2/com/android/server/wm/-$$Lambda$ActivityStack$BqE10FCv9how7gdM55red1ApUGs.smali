.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$BqE10FCv9how7gdM55red1ApUGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$BqE10FCv9how7gdM55red1ApUGs;->f$0:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$BqE10FCv9how7gdM55red1ApUGs;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$BqE10FCv9how7gdM55red1ApUGs;->f$0:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityStack$BqE10FCv9how7gdM55red1ApUGs;->f$1:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/ActivityStack;->lambda$getDumpActivitiesLocked$14(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
