.class public Lcom/android/deskclock/widget/swipeablelistview/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRequestLayout(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 26
    const/4 v3, 0x0

    .line 27
    .local v3, inLayout:Z
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 29
    .local v5, root:Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    .line 34
    .local v1, e:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v6, v0, v2

    .line 35
    .local v6, ste:Ljava/lang/StackTraceElement;
    const-string v7, "android.view.ViewGroup"

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "layout"

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 37
    const/4 v3, 0x1

    .line 41
    .end local v6           #ste:Ljava/lang/StackTraceElement;
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-nez v7, :cond_0

    .line 42
    const-string v7, "AlarmClock"

    const-string v8, "WARNING: in requestLayout during layout pass, view=%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v7, v1, v8, v9}, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 34
    .restart local v6       #ste:Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
