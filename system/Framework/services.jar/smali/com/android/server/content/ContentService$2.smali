.class Lcom/android/server/content/ContentService$2;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/ContentService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;

.field final synthetic val$pidCounts:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/content/ContentService;

    .line 288
    iput-object p1, p0, Lcom/android/server/content/ContentService$2;->this$0:Lcom/android/server/content/ContentService;

    iput-object p2, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 6
    .param p1, "lhs"    # Ljava/lang/Integer;
    .param p2, "rhs"    # Ljava/lang/Integer;

    .line 291
    iget-object v0, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 292
    .local v0, "lc":I
    iget-object v1, p0, Lcom/android/server/content/ContentService$2;->val$pidCounts:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 293
    .local v1, "rc":I
    if-ge v0, v1, :cond_18

    .line 294
    const/4 v2, 0x1

    return v2

    .line 295
    :cond_18
    if-le v0, v1, :cond_1c

    .line 296
    const/4 v2, -0x1

    return v2

    .line 298
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 288
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/ContentService$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
