.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->lambda$8j2ZFLAwkXnwDAxiTFN7mMDLhjU(Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
