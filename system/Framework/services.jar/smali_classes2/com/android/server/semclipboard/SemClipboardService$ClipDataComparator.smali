.class Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;
.super Ljava/lang/Object;
.source "SemClipboardService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/semclipboard/SemClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClipDataComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/content/clipboard/data/SemClipData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/semclipboard/SemClipboardService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/semclipboard/SemClipboardService$1;

    .line 2217
    invoke-direct {p0}, Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I
    .registers 9
    .param p1, "left"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "right"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 2220
    if-nez p2, :cond_6

    if-nez p1, :cond_6

    .line 2221
    const/4 v0, 0x0

    return v0

    .line 2222
    :cond_6
    const/4 v0, -0x1

    if-nez p2, :cond_a

    .line 2223
    return v0

    .line 2224
    :cond_a
    const/4 v1, 0x1

    if-nez p1, :cond_e

    .line 2225
    return v1

    .line 2227
    :cond_e
    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    move v0, v1

    :cond_1b
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2217
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipDataComparator;->compare(Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/data/SemClipData;)I

    move-result p1

    return p1
.end method
