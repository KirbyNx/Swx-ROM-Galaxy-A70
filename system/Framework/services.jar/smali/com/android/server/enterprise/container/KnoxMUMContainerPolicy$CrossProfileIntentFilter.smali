.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CrossProfileIntentFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter$Builder;
    }
.end annotation


# instance fields
.field public filter:Landroid/content/IntentFilter;

.field public final flags:I


# direct methods
.method private constructor <init>(Landroid/content/IntentFilter;I)V
    .registers 4
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "flags"    # I

    .line 4439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4440
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->filter:Landroid/content/IntentFilter;

    .line 4441
    iput p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;->flags:I

    .line 4442
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/IntentFilter;ILcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/content/IntentFilter;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    .line 4435
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$CrossProfileIntentFilter;-><init>(Landroid/content/IntentFilter;I)V

    return-void
.end method
