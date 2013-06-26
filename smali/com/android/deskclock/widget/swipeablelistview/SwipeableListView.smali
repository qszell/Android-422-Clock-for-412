.class public Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;
.super Landroid/widget/ListView;
.source "SwipeableListView.java"

# interfaces
.implements Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mEnableSwipe:Z

.field private mOnItemSwipeListener:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;

.field private mSwipeHelper:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/android/deskclock/widget/swipeablelistview/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mEnableSwipe:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 53
    .local v4, densityScale:F
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v5, v0

    .line 54
    .local v5, pagingTouchSlop:F
    new-instance v0, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;-><init>(Landroid/content/Context;ILcom/android/deskclock/widget/swipeablelistview/SwipeHelper$Callback;FF)V

    iput-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mSwipeHelper:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->setItemsCanFocus(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public enableSwipe(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mEnableSwipe:Z

    .line 90
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .parameter "ev"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getChildCount()I

    move-result v1

    .line 122
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 123
    .local v3, touchY:I
    const/4 v0, 0x0

    .line 125
    .local v0, childIdx:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, slidingChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 134
    .end local v2           #slidingChild:Landroid/view/View;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "view"

    .prologue
    .line 139
    return-object p1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mOnItemSwipeListener:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mOnItemSwipeListener:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;

    invoke-interface {v0, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;->onSwipe(Landroid/view/View;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 63
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mSwipeHelper:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->setDensityScale(F)V

    .line 64
    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 65
    .local v1, pagingTouchSlop:F
    iget-object v2, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mSwipeHelper:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->setPagingTouchSlop(F)V

    .line 66
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 162
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    const-string v0, "AlarmClock"

    const-string v1, "START CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->isLayoutRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 74
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    const-string v2, "FINISH CLF-ListView.onFocusChanged layoutRequested=%s root.layoutRequested=%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->isLayoutRequested()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/deskclock/widget/swipeablelistview/LogUtils;->d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mEnableSwipe:Z

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mSwipeHelper:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mEnableSwipe:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mSwipeHelper:Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/widget/swipeablelistview/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/deskclock/widget/swipeablelistview/Utils;->checkRequestLayout(Landroid/view/View;)V

    .line 82
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 83
    return-void
.end method

.method public setOnItemSwipeListener(Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView;->mOnItemSwipeListener:Lcom/android/deskclock/widget/swipeablelistview/SwipeableListView$OnItemSwipeListener;

    .line 98
    return-void
.end method
