.class Lcom/android/deskclock/DeskClock$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DeskClock.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mFragmentTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMainActionBar:Landroid/app/ActionBar;

.field mPager:Landroid/support/v4/view/ViewPager;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/deskclock/DeskClock;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/DeskClock;Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "pager"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    .line 312
    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    .line 313
    iput-object p2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    .line 315
    iput-object p3, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    .line 316
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 317
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 318
    return-void
.end method

.method private notifyPageChanged(I)V
    .locals 5
    .parameter "newPage"

    .prologue
    .line 380
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    .local v3, tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-virtual {v4}, Lcom/android/deskclock/DeskClock;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 382
    .local v1, fm:Landroid/app/FragmentManager;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockFragment;

    .line 383
    .local v0, f:Lcom/android/deskclock/DeskClockFragment;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/android/deskclock/DeskClockFragment;->onPageChanged(I)V

    goto :goto_0

    .line 387
    .end local v0           #f:Lcom/android/deskclock/DeskClockFragment;
    .end local v1           #fm:Landroid/app/FragmentManager;
    .end local v3           #tag:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;I)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;-><init>(Lcom/android/deskclock/DeskClock$TabsAdapter;Ljava/lang/Class;I)V

    .line 335
    .local v0, info:Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 336
    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 337
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifyDataSetChanged()V

    .line 340
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 5
    .parameter "position"

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;

    .line 323
    .local v1, info:Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    iget-object v2, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->access$000(Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->access$100(Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClockFragment;

    .line 325
    .local v0, f:Lcom/android/deskclock/DeskClockFragment;
    return-object v0
.end method

.method public notifySelectedPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifyPageChanged(I)V

    .line 377
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 356
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 345
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 350
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock$TabsAdapter;->notifyPageChanged(I)V

    .line 351
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 361
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;

    .line 366
    .local v0, info:Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/android/deskclock/DeskClock$TabsAdapter$TabInfo;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 367
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 373
    return-void
.end method

.method public registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 4
    .parameter "frag"

    .prologue
    .line 390
    invoke-virtual {p1}, Lcom/android/deskclock/DeskClockFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, tag:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string v1, "DeskClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add an existing fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/deskclock/DeskClockFragment;->onPageChanged(I)V

    .line 399
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/deskclock/DeskClockFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V
    .locals 2
    .parameter "frag"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$TabsAdapter;->mFragmentTags:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/android/deskclock/DeskClockFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method
